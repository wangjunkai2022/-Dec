.class public Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$for;
.super Lcom/apk/c1;
.source "LocalWebShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/m0;->for()Ljava/lang/String;

    .line 2
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->f(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->f(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V

    return-void
.end method
