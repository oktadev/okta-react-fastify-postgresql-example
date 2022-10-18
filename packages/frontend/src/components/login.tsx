import { useOktaAuth } from "@okta/okta-react";
import "../App.css";
import Facilities from "./facilities";

export function Login() {
  const { authState, oktaAuth } = useOktaAuth();

  const handleLogin = async () => {
    await oktaAuth.signInWithRedirect();
  };

  const customAuthHandler = async () => {
    const previousAuthState = oktaAuth.authStateManager.getPreviousAuthState();
    console.log({ previousAuthState });
    if (!previousAuthState || !previousAuthState.isAuthenticated) {
      await handleLogin();
    }
  };

  return authState?.isAuthenticated ? (
    <Facilities />
  ) : (
    <div className="form-wrapper">
      <form onSubmit={customAuthHandler}>
        <h2>Welcome Back!</h2>
        <input type="submit" value="Login" />
      </form>
    </div>
  );
}
