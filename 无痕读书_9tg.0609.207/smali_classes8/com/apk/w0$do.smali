.class public final Lcom/apk/w0$do;
.super Ljava/lang/Object;
.source "WebInfoHelper.java"

# interfaces
.implements Lcom/apk/vu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/g1;

.field public final synthetic if:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/apk/g1;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/w0$do;->do:Lcom/apk/g1;

    iput-object p2, p0, Lcom/apk/w0$do;->if:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string p1, "registerPermissionsTagKey"

    .line 1
    invoke-static {p1}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/apk/w0$do;->do:Lcom/apk/g1;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_0
    const-string p2, ""

    .line 4
    invoke-static {p1, p2}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public if(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string p1, "registerPermissionsTagKey"

    .line 1
    invoke-static {p1}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/apk/w0$do;->do:Lcom/apk/g1;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_0
    const-string p2, ""

    .line 4
    invoke-static {p1, p2}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
