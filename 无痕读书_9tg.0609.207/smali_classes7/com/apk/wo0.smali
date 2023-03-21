.class public Lcom/apk/wo0;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field public do:Lcom/apk/uo0;

.field public if:Lcom/apk/vo0;


# direct methods
.method public constructor <init>(Lcom/apk/cp0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lcom/apk/ro0;

    .line 3
    sget-object p1, Lcom/apk/vo0;->for:Lcom/apk/vo0;

    .line 4
    iput-object p1, p0, Lcom/apk/wo0;->if:Lcom/apk/vo0;

    .line 5
    new-instance p1, Lcom/apk/uo0;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/apk/uo0;-><init>(II)V

    .line 6
    iput-object p1, p0, Lcom/apk/wo0;->do:Lcom/apk/uo0;

    return-void
.end method
