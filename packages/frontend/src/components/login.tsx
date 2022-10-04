import "../App.css";

interface Props {
  handleSubmit: () => void;
}

export function Login({ handleSubmit }: Props) {
  return (
    <div className="form-wrapper">
      <form onSubmit={() => handleSubmit}>
        <h2>Welcome Back!</h2>
        <input type="submit" value="Login" />
      </form>
    </div>
  );
}
