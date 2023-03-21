.class public Lcom/biquge/ebook/app/ui/fragment/InfoFragment$do;
.super Lcom/apk/bg;
.source "InfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/apk/continue;->throws:Lcom/biquge/ebook/app/bean/MyInfoMsgBean;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/MyInfoMsgBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/MyInfoMsgBean;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/MyInfoMsgBean;->getLandingtype()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0, v1, v2, p1}, Lcom/biquge/ebook/app/widget/TopMsgView;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->synchronized(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;Z)V

    :cond_0
    return-void
.end method
