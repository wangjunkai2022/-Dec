.class public Lcom/apk/mm0;
.super Lcom/apk/tm0;
.source "CData.java"

# interfaces
.implements Lcom/apk/km0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/tm0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public new()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/tm0;->if:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "/*<![CDATA[*/"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/tm0;->if:Ljava/lang/String;

    const-string v2, "/*]]>*/"

    invoke-static {v0, v1, v2}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
