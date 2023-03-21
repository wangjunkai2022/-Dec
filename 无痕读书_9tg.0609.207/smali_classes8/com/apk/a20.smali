.class public Lcom/apk/a20;
.super Lcom/apk/bg;
.source "ComicShelfFragment.java"


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/apk/a20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/16 v1, 0x3ea

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/apk/a20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
