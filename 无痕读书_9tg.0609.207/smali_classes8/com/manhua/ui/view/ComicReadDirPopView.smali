.class public Lcom/manhua/ui/view/ComicReadDirPopView;
.super Lcom/lxj/xpopup/core/DrawerPopupView;
.source "ComicReadDirPopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public break:Landroid/view/View;

.field public catch:Landroid/widget/TextView;

.field public class:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

.field public final const:Landroid/app/Activity;

.field public final final:Ljava/lang/String;

.field public import:Lcom/apk/ez;

.field public native:Lcom/apk/z2;

.field public final public:Lcom/apk/r5;

.field public final super:Ljava/lang/String;

.field public this:Landroid/widget/ImageView;

.field public final throw:Lcom/apk/oz;

.field public while:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/oz;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/DrawerPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/manhua/ui/view/ComicReadDirPopView$do;

    invoke-direct {v0, p0}, Lcom/manhua/ui/view/ComicReadDirPopView$do;-><init>(Lcom/manhua/ui/view/ComicReadDirPopView;)V

    iput-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->public:Lcom/apk/r5;

    .line 3
    iput-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->const:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->final:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->super:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->while:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->throw:Lcom/apk/oz;

    return-void
.end method


# virtual methods
.method public final break(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->break:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->break:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->native:Lcom/apk/z2;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->super:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/apk/z2;->import(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final catch()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apk/ez;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    invoke-virtual {v1}, Lcom/apk/ez;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    invoke-virtual {v3, v0}, Lcom/apk/ez;->if(I)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->while:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v0, v1

    const/4 v2, 0x0

    .line 4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    if-lez v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->class:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0163

    return v0
.end method

.method public getMaxWidth()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903ed

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->throw:Lcom/apk/oz;

    if-eqz p1, :cond_4

    .line 4
    check-cast p1, Lcom/apk/h10;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903ec

    if-ne v0, v1, :cond_3

    const-string p1, "top"

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "bottom"

    if-eqz v0, :cond_2

    .line 8
    :try_start_1
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->class:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 9
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    const v0, 0x7f08015e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->class:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    iget-object v1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    invoke-virtual {v1}, Lcom/apk/ez;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901df

    if-ne p1, v0, :cond_4

    .line 17
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->while:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/manhua/ui/view/ComicReadDirPopView;->catch()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0901de

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->break:Landroid/view/View;

    const v0, 0x7f0903f4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->catch:Landroid/widget/TextView;

    const v0, 0x7f090183

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    iput-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->class:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const v0, 0x7f0903ed

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903ec

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901df

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    const v1, 0x7f08015e

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->this:Landroid/widget/ImageView;

    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->catch:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->final:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v0, Lcom/apk/ez;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->class:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-direct {v0, v1, v2}, Lcom/apk/ez;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;)V

    iput-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    .line 14
    iget-object v1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->class:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->class:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 16
    new-instance v0, Lcom/apk/z2;

    iget-object v1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->const:Landroid/app/Activity;

    iget-object v2, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->public:Lcom/apk/r5;

    invoke-direct {v0, v1, v2}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->native:Lcom/apk/z2;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/manhua/ui/view/ComicReadDirPopView;->break(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    .line 2
    iget-object p1, p1, Lcom/apk/ez;->do:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->throw:Lcom/apk/oz;

    if-eqz p2, :cond_2

    .line 5
    check-cast p2, Lcom/apk/h10;

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p2, Lcom/apk/h10;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 7
    iget-object p2, p2, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 8
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    .line 9
    iput-object p1, p2, Lcom/apk/f00;->try:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput p1, p2, Lcom/apk/f00;->else:I

    .line 11
    invoke-virtual {p2}, Lcom/apk/f00;->h()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V

    :cond_3
    return-void
.end method

.method public setReadChapterId(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->while:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->while:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->import:Lcom/apk/ez;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/view/ComicReadDirPopView;->while:Ljava/lang/String;

    .line 5
    iget-object v1, p1, Lcom/apk/ez;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iput-object v0, p1, Lcom/apk/ez;->for:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/manhua/ui/view/ComicReadDirPopView;->catch()V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/manhua/ui/view/ComicReadDirPopView;->break(Z)V

    return-void
.end method
