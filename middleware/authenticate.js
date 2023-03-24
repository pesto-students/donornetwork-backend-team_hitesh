import jwt  from "jsonwebtoken";

function authenticateToken(req, res, next) {
  const authHeader = req.headers["authorization"];
  const token = authHeader && authHeader.split(" ")[1];

  if (token == null) return res.sendStatus(401);

  jwt.verify(token, '40a2edfb9868fffcd85ba269babf7519730aab76aa28fe515b4c3f9b01829b5d2cd571321955e2216a5dea1409f0660b7563cfdcc6172725b619aaa0fa93f346', (err, userid) => {
    
    if (err) return res.sendStatus(403);
    req.id = userid.id;
    next();
  });
}
function generateAccessToken(user_id) {
  // console.log("payload", user_id);
  return jwt.sign(
    user_id,
    "40a2edfb9868fffcd85ba269babf7519730aab76aa28fe515b4c3f9b01829b5d2cd571321955e2216a5dea1409f0660b7563cfdcc6172725b619aaa0fa93f346",
    { expiresIn: "12h" }
  );
}

export { authenticateToken, generateAccessToken };
