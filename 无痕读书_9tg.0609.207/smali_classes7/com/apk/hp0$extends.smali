.class public final Lcom/apk/hp0$extends;
.super Lcom/apk/hp0$super;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/hp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extends"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/hp0$super;-><init>(II)V

    return-void
.end method


# virtual methods
.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-child"

    return-object v0
.end method

.method public if(Lcom/apk/jo0;Lcom/apk/jo0;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/apk/jo0;->transient()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
