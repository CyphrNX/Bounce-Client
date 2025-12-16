$request = [System.Net.WebRequest]::Create("https://bloxd.io")
$request.Method = "HEAD"
try {
    $response = $request.GetResponse()
    $response.Headers
    $response.Close()
} catch {
    Write-Host "Error: $($_.Exception.Message)"
}