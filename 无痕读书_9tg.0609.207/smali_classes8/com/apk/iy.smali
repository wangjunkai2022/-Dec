.class public final Lcom/apk/iy;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public for:Lcom/apk/zf0;

.field public if:Ljava/lang/Throwable;

.field public new:Lcom/apk/ch0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/apk/zf0;",
            "Lcom/apk/ch0;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/apk/iy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/apk/iy;

    invoke-direct {p0}, Lcom/apk/iy;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/iy;->for:Lcom/apk/zf0;

    .line 3
    iput-object p2, p0, Lcom/apk/iy;->new:Lcom/apk/ch0;

    .line 4
    iput-object p3, p0, Lcom/apk/iy;->if:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lcom/apk/zf0;",
            "Lcom/apk/ch0;",
            ")",
            "Lcom/apk/iy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/apk/iy;

    invoke-direct {p0}, Lcom/apk/iy;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/apk/iy;->for:Lcom/apk/zf0;

    .line 4
    iput-object p3, p0, Lcom/apk/iy;->new:Lcom/apk/ch0;

    return-object p0
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/iy;->new:Lcom/apk/ch0;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/apk/ch0;->try:I

    return v0
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/iy;->if:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/iy;->new:Lcom/apk/ch0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/apk/ch0;->new:Ljava/lang/String;

    return-object v0
.end method
