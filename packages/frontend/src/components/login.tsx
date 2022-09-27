import "../App.css";

interface Props {
  handleSubmit: (e: React.FormEvent<HTMLFormElement>) => void;
  username: string;
  password: string;
  handleSetUsername: (username: string) => void;
  handleSetPassword: (password: string) => void;
}

export function Login({
  handleSubmit,
  username,
  password,
  handleSetUsername,
  handleSetPassword,
}: Props) {
  return (
    <div className="form-wrapper">
      <form onSubmit={(e) => handleSubmit(e)}>
        <h2>Welcome Back!</h2>
        <fieldset>
          <legend>Log In</legend>
          <div className="input-wrapper">
            <label htmlFor="username">Username:</label>
            <input
              value={username}
              type="text"
              id="username"
              required
              onChange={(e) => handleSetUsername(e.target.value)}
            />
          </div>
          <div className="input-wrapper">
            <label htmlFor="password">Password:</label>
            <input
              value={password}
              type="password"
              id="password"
              required
              onChange={(e) => handleSetPassword(e.target.value)}
            />
          </div>
        </fieldset>
        <input type="submit" value="Login" />
      </form>
    </div>
  );
}
