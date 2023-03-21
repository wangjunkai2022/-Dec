.class public Lcom/apk/wn0;
.super Ljava/lang/Object;
.source "TagNodeNameCondition.java"

# interfaces
.implements Lcom/apk/tn0;


# instance fields
.field public do:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/wn0;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/kn0;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/apk/kn0;->try()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/wn0;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method
