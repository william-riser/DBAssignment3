SELECT DISTINCT 
    customers.CustomerId,
    customers.FirstName,
    customers.LastName
    FROM customers
    WHERE customers.CustomerId IN (
        SELECT invoices.CustomerId
        FROM invoices
            JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
            JOIN tracks ON invoice_items.TrackId = tracks.TrackId
        WHERE tracks.Milliseconds > (
                SELECT AVG(tracks.Milliseconds)
                FROM tracks
                WHERE tracks.Milliseconds <= 900000
            )
    );