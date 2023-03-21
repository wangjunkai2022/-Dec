.class public Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;
.super Lcom/lxj/xpopup/impl/FullScreenPopupView;
.source "RedBgImageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;
    }
.end annotation


# instance fields
.field public break:Ljava/lang/String;

.field public catch:Ljava/lang/String;

.field public final else:Landroid/app/Activity;

.field public goto:Landroid/widget/LinearLayout;

.field public this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const-string v0, "#333333"

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->break:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->else:Landroid/app/Activity;

    return-void
.end method

.method public static break(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->else:Landroid/app/Activity;

    const/16 v1, 0x3ff

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static catch(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    invoke-static {v4, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-static {v4, v2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-static {v4, p0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static this(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/apk/kf;->else(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/DownloadFileModel;-><init>()V

    .line 3
    iput-object p1, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    .line 4
    iput-object p2, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->name:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowNotice:Z

    .line 6
    iput-boolean p2, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowToast:Z

    .line 7
    iput-boolean p2, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isInstall:Z

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->else:Landroid/app/Activity;

    new-instance v2, Lcom/apk/ed;

    invoke-direct {v2, p0, p1}, Lcom/apk/ed;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;Ljava/lang/String;)V

    invoke-static {p2, v1, v2}, Lcom/apk/kf;->if(Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Lcom/apk/z5;)V

    .line 9
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object p2

    .line 10
    iget-object v1, p2, Lcom/apk/kf;->do:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p2, Lcom/apk/kf;->do:Ljava/util/Map;

    .line 12
    :cond_1
    iget-object p2, p2, Lcom/apk/kf;->do:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    if-eqz p0, :cond_2

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void

    .line 15
    :cond_3
    throw v0
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c00a2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900bc

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901ae

    if-ne p1, v0, :cond_1

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->catch:Ljava/lang/String;

    invoke-static {p1}, Lcom/apk/rt;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/a6;->try()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->catch:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/apk/ze;->break(Ljava/io/File;Ljava/io/File;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->break:Ljava/lang/String;

    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1}, Lcom/apk/g2;->default(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f09046c

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->else:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    new-instance v1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$do;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    new-instance v1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$do;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    new-instance v1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$if;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    const v0, 0x7f0901c5

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->goto:Landroid/widget/LinearLayout;

    const v0, 0x7f0900bc

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ae

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onShow()V

    const-string v0, "type = ?"

    const-string v1, "3"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v2, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-virtual {v0, v2}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/g2;->try()Lcom/biquge/ebook/app/bean/RedBgImageBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    new-instance v2, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    .line 6
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    const v1, 0x7f080065

    .line 7
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setsId(I)V

    const-string v1, "#50000000"

    .line 8
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setBgColor(Ljava/lang/String;)V

    const v1, 0x7f100281

    .line 9
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setName(Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->this:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setCotomImage(Ljava/lang/String;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->catch:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->goto:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/apk/u;->switch(Ljava/lang/String;Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->goto:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f0901b2

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/ExampleFontTextView;

    const/high16 v0, -0x1000000

    .line 5
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/widget/ExampleFontTextView;->setFontColor(I)V

    const v0, 0x7f0901ad

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const-string v1, "\u5b57\u4f53"

    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/apk/nz;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->else:Landroid/app/Activity;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lcom/apk/eg;->catch(F)I

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->else:Landroid/app/Activity;

    const/16 v2, 0x1e

    const/16 v3, 0xf

    invoke-static {v1, v0, v2, v3}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    const v0, 0x7f0901b0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltop/defaults/colorpicker/ColorPickerView;

    .line 11
    new-instance v1, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$for;

    invoke-direct {v1, p0, p1}, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$for;-><init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;Lcom/biquge/ebook/app/widget/ExampleFontTextView;)V

    .line 12
    iget-object p1, v0, Ltop/defaults/colorpicker/ColorPickerView;->new:Lcom/apk/ts0;

    invoke-interface {p1, v1}, Lcom/apk/ts0;->if(Lcom/apk/vs0;)V

    .line 13
    iget-object p1, v0, Ltop/defaults/colorpicker/ColorPickerView;->this:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "#E8D8B7"

    .line 14
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ltop/defaults/colorpicker/ColorPickerView;->setInitialColor(I)V

    const p1, 0x7f0901af

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
