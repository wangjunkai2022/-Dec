.class public final Lcom/apk/ul$if;
.super Lcom/apk/ol;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ol<",
        "Lcom/apk/ul$do;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/ol;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/apk/xl;
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/ul$do;

    invoke-direct {v0, p0}, Lcom/apk/ul$do;-><init>(Lcom/apk/ul$if;)V

    return-object v0
.end method

.method public new(ILjava/lang/Class;)Lcom/apk/ul$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/apk/ul$do;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/ol;->if()Lcom/apk/xl;

    move-result-object v0

    check-cast v0, Lcom/apk/ul$do;

    .line 2
    iput p1, v0, Lcom/apk/ul$do;->if:I

    .line 3
    iput-object p2, v0, Lcom/apk/ul$do;->for:Ljava/lang/Class;

    return-object v0
.end method
