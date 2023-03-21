.class public Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$do;
.super Lcom/apk/c1;
.source "NewShareDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/ShareTgBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    const-class v0, Lcom/biquge/ebook/app/bean/ShareTgBean;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;->tv_empty:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;->tv_empty:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment;->do:Lcom/biquge/ebook/app/ui/fragment/NewShareDeviceFragment$if;

    .line 7
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method
