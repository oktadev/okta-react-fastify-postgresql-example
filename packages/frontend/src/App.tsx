import { FormEvent, useEffect, useState } from "react";
import "./App.css";
import Facilities from "./components/facilities";
import { Login } from "./components/login";

interface IAuthResp {
  authed: boolean;
}

function App() {
  const [auth, setAuth] = useState<IAuthResp>({ authed: true });
  const [isAuthenticating, setIsAuthenticating] = useState(false);
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  const handleSubmit = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    console.log({ auth });

    // setIsAuthenticating(true);
    // history.push("/login");
    //TODO: Call API & set authenticated to true if there are no errors
  };

  return auth?.authed ? (
    <Facilities />
  ) : (
    <Login
      handleSubmit={handleSubmit}
      username={username}
      password={password}
      handleSetUsername={setUsername}
      handleSetPassword={setPassword}
    />
  );
}

export default App;
