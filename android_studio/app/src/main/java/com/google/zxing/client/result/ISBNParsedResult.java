package com.google.zxing.client.result;

/* loaded from: classes8.dex */
public final class ISBNParsedResult extends ParsedResult {
    public final String isbn;

    public ISBNParsedResult(String str) {
        super(ParsedResultType.ISBN);
        this.isbn = str;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.isbn;
    }

    public String getISBN() {
        return this.isbn;
    }
}
