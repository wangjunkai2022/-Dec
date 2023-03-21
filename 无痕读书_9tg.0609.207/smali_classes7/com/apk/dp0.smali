.class public Lcom/apk/dp0;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/apk/kp0;


# instance fields
.field public final do:Lcom/apk/jo0;

.field public final for:Lcom/apk/hp0;

.field public final if:Lcom/apk/gp0;


# direct methods
.method public constructor <init>(Lcom/apk/jo0;Lcom/apk/gp0;Lcom/apk/hp0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/dp0;->do:Lcom/apk/jo0;

    .line 3
    iput-object p2, p0, Lcom/apk/dp0;->if:Lcom/apk/gp0;

    .line 4
    iput-object p3, p0, Lcom/apk/dp0;->for:Lcom/apk/hp0;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/no0;I)V
    .locals 1

    .line 1
    instance-of p2, p1, Lcom/apk/jo0;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/apk/jo0;

    .line 3
    iget-object p2, p0, Lcom/apk/dp0;->for:Lcom/apk/hp0;

    iget-object v0, p0, Lcom/apk/dp0;->do:Lcom/apk/jo0;

    invoke-virtual {p2, v0, p1}, Lcom/apk/hp0;->do(Lcom/apk/jo0;Lcom/apk/jo0;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/apk/dp0;->if:Lcom/apk/gp0;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/no0;I)V
    .locals 0

    return-void
.end method
