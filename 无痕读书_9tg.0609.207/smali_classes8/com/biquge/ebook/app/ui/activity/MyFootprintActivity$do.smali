.class public Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity$do;
.super Ljava/lang/Object;
.source "MyFootprintActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;->onItemMenuSelected(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;->do:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;->for:Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookFootprintFragment;->for:Lcom/apk/v3;

    if-eqz v0, :cond_1

    .line 6
    const-class v1, Lcom/biquge/ebook/app/bean/Footprint;

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 7
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/z3;

    invoke-direct {v2, v0}, Lcom/apk/z3;-><init>(Lcom/apk/v3;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MyFootprintActivity;->new:Lcom/manhua/ui/fragment/ComicFootprintFragment;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->for:Lcom/apk/z2;

    if-eqz v0, :cond_1

    .line 11
    const-class v1, Lcom/manhua/data/bean/ComicFootprint;

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 12
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/d3;

    invoke-direct {v2, v0}, Lcom/apk/d3;-><init>(Lcom/apk/z2;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_1
    :goto_0
    return-void
.end method
