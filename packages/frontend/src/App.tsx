import { FormEvent, useEffect, useState } from "react";
import "./App.css";
import Facilities from "./components/facilities";
import { Login } from "./components/login";

interface IAuthResp {
  authed: boolean;
}

function App() {
  const [auth, setAuth] = useState<IAuthResp>({ authed: false });
  const [isAuthenticating, setIsAuthenticating] = useState(false);

  const handleSubmit = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setIsAuthenticating(true);
  };

  useEffect(() => {
    fetch("/auth")
      .then((res) => {
        res.json();
      })
      .then(
        (result) => {
          console.log({ result });
          // setAuth(result);
          setIsAuthenticating(false);
        },

        (errors) => {
          console.log({ errors });
        }
      );
  }, [isAuthenticating]);

  return auth?.authed ? (
    <Facilities />
  ) : (
    <Login handleSubmit={() => handleSubmit} />
  );
}

export default App;
