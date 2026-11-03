document.querySelectorAll(".nav-item").forEach((item) => {
  item.addEventListener("click", () => {
    const navItems = item.closest(".nav")?.querySelectorAll(".nav-item");
    if (!navItems) return;
    navItems.forEach((navItem) => navItem.classList.remove("active"));
    item.classList.add("active");
  });
});

document.querySelectorAll("#dayPicker button").forEach((button) => {
  button.addEventListener("click", () => button.classList.toggle("selected"));
});

const toast = document.getElementById("toast");
document.getElementById("saveSchedule").addEventListener("click", () => {
  const time = document.getElementById("timeInput").value || "06:30";
  document.getElementById("nextWatering").textContent = `Hoy, ${time}`;
  toast.classList.add("show");
  window.setTimeout(() => toast.classList.remove("show"), 2200);
});
