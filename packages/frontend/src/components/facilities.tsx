import { useOktaAuth } from "@okta/okta-react";
import { useEffect, useState } from "react";

interface IFacility {
  Center: string;
  Facility: string;
  Status: string;
  City: string;
  State: string;
  Visited: boolean;
}

function Facilities() {
  const [data, setData] = useState<IFacility[]>();
  const [errors, setErrors] = useState();
  const { authState, oktaAuth } = useOktaAuth();

  const logout = async () => {
    try {
      await oktaAuth.signOut();
    } catch (err) {
      throw err;
    }
  };

  useEffect(() => {
    if (authState?.isAuthenticated) {
      const apiCall = async () => {
        try {
          const response = await fetch("/facilities", {
            headers: {
              Authorization: "Bearer " + authState.accessToken?.accessToken,
            },
          });
          const data = await response.json();
          setData(data);
        } catch (errors: any) {
          setErrors(errors);
        }
      };
      apiCall();
    }
  }, [authState]);

  const visitedClick = (e: React.MouseEvent<HTMLInputElement, MouseEvent>) => {
    console.log("clicked");
  };

  console.log({ data });

  if (data && !errors) {
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
              {data.map((facility) => {
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
                        checked={facility.Visited}
                        onClick={(e) => visitedClick(e)}
                      />
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
    return <p>An error occurred fetching data: {errors}</p>;
  } else return <p className="loading">Loading...</p>;
}

export default Facilities;
