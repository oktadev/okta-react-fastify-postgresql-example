import { useEffect, useState } from "react";

interface IFacility {
  Center: string;
  Facility: string;
  Status: string;
  City: string;
  State: string;
}

function Facilities() {
  const [isLoaded, setIsLoaded] = useState(false);
  const [data, setData] = useState<IFacility[]>();
  const [errors, setErrors] = useState();

  useEffect(() => {
    fetch("/facilities")
      .then((res) => res.json())
      .then(
        (result) => {
          console.log({ result });
          setIsLoaded(true);
          setData(result);
        },

        (errors) => {
          setErrors(errors);
        }
      );
  }, []);

  if (isLoaded && !errors) {
    return (
      <div className="facilities-wrapper">
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
