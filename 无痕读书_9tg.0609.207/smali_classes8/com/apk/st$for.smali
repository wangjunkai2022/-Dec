.class public final Lcom/apk/st$for;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/st;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KI:",
        "Ljava/lang/Object;",
        "VI:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKI;"
        }
    .end annotation
.end field

.field public if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/apk/st$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/st$for;->do:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/apk/st$for;->if:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic do(Lcom/apk/st$for;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/st$for;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public static if(Lcom/apk/st$for;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/st$for;->do:Ljava/lang/Object;

    instance-of v1, v0, Lcom/apk/st$if;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/apk/st$if;

    invoke-interface {v0}, Lcom/apk/st$if;->do()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/apk/st$for;->if:Ljava/lang/Object;

    instance-of v0, p0, Lcom/apk/st$if;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/apk/st$if;

    invoke-interface {p0}, Lcom/apk/st$if;->do()V

    :cond_1
    return-void
.end method

.method private update(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVI;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/st$for;->if:Ljava/lang/Object;

    instance-of v1, v0, Lcom/apk/st$if;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/apk/st$if;

    invoke-interface {v0}, Lcom/apk/st$if;->do()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/apk/st$for;->if:Ljava/lang/Object;

    return-void
.end method
