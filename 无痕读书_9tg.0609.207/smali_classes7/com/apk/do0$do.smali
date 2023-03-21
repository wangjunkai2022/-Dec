.class public Lcom/apk/do0$do;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/do0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/apk/co0;",
        ">;"
    }
.end annotation


# instance fields
.field public do:I

.field public final synthetic if:Lcom/apk/do0;


# direct methods
.method public constructor <init>(Lcom/apk/do0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/do0$do;->if:Lcom/apk/do0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/apk/do0$do;->do:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lcom/apk/do0$do;->do:I

    iget-object v1, p0, Lcom/apk/do0$do;->if:Lcom/apk/do0;

    .line 2
    iget v2, v1, Lcom/apk/do0;->do:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    .line 3
    iget-object v2, v1, Lcom/apk/do0;->if:[Ljava/lang/String;

    aget-object v0, v2, v0

    .line 4
    invoke-virtual {v1, v0}, Lcom/apk/do0;->final(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/apk/do0$do;->do:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/apk/do0$do;->do:I

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/apk/do0$do;->do:I

    iget-object v1, p0, Lcom/apk/do0$do;->if:Lcom/apk/do0;

    .line 7
    iget v1, v1, Lcom/apk/do0;->do:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/apk/co0;

    iget-object v1, p0, Lcom/apk/do0$do;->if:Lcom/apk/do0;

    iget-object v2, v1, Lcom/apk/do0;->if:[Ljava/lang/String;

    iget v3, p0, Lcom/apk/do0$do;->do:I

    aget-object v2, v2, v3

    iget-object v4, v1, Lcom/apk/do0;->for:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v0, v2, v3, v1}, Lcom/apk/co0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/apk/do0;)V

    .line 2
    iget v1, p0, Lcom/apk/do0$do;->do:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/apk/do0$do;->do:I

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/do0$do;->if:Lcom/apk/do0;

    iget v1, p0, Lcom/apk/do0$do;->do:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/apk/do0$do;->do:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/apk/do0;->import(I)V

    return-void
.end method
