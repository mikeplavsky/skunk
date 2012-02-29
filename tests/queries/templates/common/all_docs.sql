-- expects Document Library Name in @docLib
-- returns all Documents

SELECT * INTO #all_documents FROM Documents WHERE Id = @docLib
