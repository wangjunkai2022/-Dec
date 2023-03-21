.class public Lcom/apk/yb;
.super Lcom/apk/c1;
.source "LocalWebShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/yb;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/w0;->new()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/yb;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->a(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;Ljava/lang/String;)V

    return-void
.end method
