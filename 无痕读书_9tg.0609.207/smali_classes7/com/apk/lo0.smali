.class public Lcom/apk/lo0;
.super Lcom/apk/jo0;
.source "FormElement.java"


# instance fields
.field public final break:Lcom/apk/gp0;


# direct methods
.method public constructor <init>(Lcom/apk/xo0;Ljava/lang/String;Lcom/apk/do0;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/apk/jo0;-><init>(Lcom/apk/xo0;Ljava/lang/String;Lcom/apk/do0;)V

    .line 2
    new-instance p1, Lcom/apk/gp0;

    invoke-direct {p1}, Lcom/apk/gp0;-><init>()V

    iput-object p1, p0, Lcom/apk/lo0;->break:Lcom/apk/gp0;

    return-void
.end method


# virtual methods
.method public bridge synthetic class()Lcom/apk/no0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/lo0;->f()Lcom/apk/lo0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/lo0;->f()Lcom/apk/lo0;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/apk/lo0;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/jo0;->interface()Lcom/apk/jo0;

    move-result-object v0

    check-cast v0, Lcom/apk/lo0;

    return-object v0
.end method

.method public bridge synthetic interface()Lcom/apk/jo0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/lo0;->f()Lcom/apk/lo0;

    move-result-object v0

    return-object v0
.end method

.method public package(Lcom/apk/no0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/no0;->package(Lcom/apk/no0;)V

    .line 2
    iget-object v0, p0, Lcom/apk/lo0;->break:Lcom/apk/gp0;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
