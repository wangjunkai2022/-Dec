.class public Lcom/apk/y$if;
.super Lcom/apk/c1;
.source "SwlAdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/o40;


# direct methods
.method public constructor <init>(Lcom/apk/y;Ljava/lang/String;Lcom/apk/o40;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/y$if;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/y$if;->if:Lcom/apk/o40;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/y$if;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/u;->else(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/y$if;->if:Lcom/apk/o40;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/apk/o40;->success()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/y$if;->if:Lcom/apk/o40;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/apk/o40;->error()V

    :cond_1
    :goto_0
    return-void
.end method
