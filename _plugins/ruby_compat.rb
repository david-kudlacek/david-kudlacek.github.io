# --- Ruby 4.0 Compatibility Patch ---
class Object
  def tainted?; false; end
  def taint; self; end
  def untaint; self; end
end
# ------------------------------------
