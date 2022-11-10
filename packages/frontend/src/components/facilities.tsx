import { useOktaAuth } from "@okta/okta-react";
import { useEffect, useState } from "react";

interface IFacility {
  Center: string;
  Facility: string;
  Status: string;
  City: string;
  State: string;
  Visited: boolean;
  id: bigint;
}

function getErrorMessage(error: unknown) {
  if (error instanceof Error) return error.message;
  return String(error);
}

function Facilities() {
  const [data, setData] = useState<IFacility[]>();
  const [errors, setErrors] = useState<string>();
  const { authState, oktaAuth } = useOktaAuth();

  const logout = async () => {
    try {
      await oktaAuth.signOut();
    } catch (err) {
      throw err;
    }
  };

  useEffect(() => {
    const apiCall = async () => {
      if (authState?.isAuthenticated && authState.accessToken?.accessToken) {
        try {
          const response = await fetch("/facilities", {
            headers: {
              Authorization: `Bearer ${authState.accessToken.accessToken}`,
            },
          });
          const data = await response.json();
          setData(data);
        } catch (error: unknown) {
          setErrors(getErrorMessage(error));
        }
      }
    };
    apiCall();
  }, [authState]);

  const handleVisitedClick = (
    e: React.ChangeEvent<HTMLInputElement>,
    facilityId: bigint
  ) => {
    const url = `/facilities/${facilityId}`;

    const apiCall = async () => {
      if (authState?.isAuthenticated && authState.accessToken?.accessToken) {
        try {
          await fetch(url, {
            method: "PATCH",
            headers: {
              Authorization: `Bearer ${authState.accessToken.accessToken}`,
              "Content-Type": "application/json",
            },
            body: JSON.stringify({ visited: e.target.checked }),
          });
        } catch (error: unknown) {
          setErrors(getErrorMessage(error));
        }
      }
    };
    apiCall();
  };

  const handleDeleteClick = (facilityId: bigint) => {
    const url = `/facilities/${facilityId}`;

    const apiCall = async () => {
      if (authState?.isAuthenticated && authState.accessToken?.accessToken) {
        try {
          await fetch(url, {
            method: "DELETE",
            headers: {
              Authorization: `Bearer ${authState.accessToken.accessToken}`,
            },
          });

          setData(data?.filter((row) => row.id !== facilityId));
        } catch (error: unknown) {
          setErrors(getErrorMessage(error));
        }
      }
    };
    apiCall();
  };

  if (data && !errors && authState?.isAuthenticated) {
    return (
      <div className="facilities-wrapper">
        <button onClick={logout} className="logout-button">
          Logout
        </button>
        <h1>NASA Facilities</h1>
        {data ? (
          <table className="facilities-table">
            <thead>
              <tr>
                <th>Center</th>
                <th>Facility</th>
                <th>Status</th>
                <th>City</th>
                <th>State</th>
                <th>Visited</th>
              </tr>
            </thead>
            <tbody>
              {data
                .sort((a, b) => (a.id < b.id ? -1 : a.id > b.id ? 1 : 0))
                .map((facility) => {
                  return (
                    <tr key={facility.Facility}>
                      <td>{facility.Center}</td>
                      <td>{facility.Facility}</td>
                      <td>{facility.Status}</td>
                      <td>{facility.City}</td>
                      <td>{facility.State}</td>
                      <td>
                        <input
                          type="checkbox"
                          defaultChecked={facility.Visited}
                          onChange={(e) => handleVisitedClick(e, facility.id)}
                        />
                      </td>
                      <td>
                        <button
                          className="button-delete"
                          onClick={() => handleDeleteClick(facility.id)}
                        >
                          DELETE
                        </button>
                      </td>
                    </tr>
                  );
                })}
            </tbody>
          </table>
        ) : (
          <p>No facilities found</p>
        )}
      </div>
    );
  } else if (errors) {
    return <p>An error occurred: {errors}</p>;
  } else return <p className="loading">Loading...</p>;
}

export default Facilities;
