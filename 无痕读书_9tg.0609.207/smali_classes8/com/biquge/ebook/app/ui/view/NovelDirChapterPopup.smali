.class public Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;
.super Lcom/lxj/xpopup/core/DrawerPopupView;
.source "NovelDirChapterPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public abstract:I

.field public break:Landroid/widget/TextView;

.field public catch:Landroid/widget/ImageView;

.field public class:Landroid/widget/TextView;

.field public const:Landroid/widget/TextView;

.field public continue:Landroid/app/Activity;

.field public default:Landroid/widget/Button;

.field public extends:Landroidx/recyclerview/widget/RecyclerView;

.field public final:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

.field public finally:Landroid/widget/LinearLayout;

.field public final import:Ljava/lang/String;

.field public native:Ljava/lang/String;

.field public package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

.field public private:I

.field public final public:Lcom/apk/h1;

.field public return:Z

.field public static:Lcom/apk/k;

.field public strictfp:Lcom/apk/v3;

.field public super:Landroid/view/View;

.field public switch:Landroid/widget/LinearLayout;

.field public this:Landroid/widget/LinearLayout;

.field public throw:Landroid/widget/FrameLayout;

.field public throws:Landroid/widget/Button;

.field public final volatile:Lcom/apk/u5;

.field public final while:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/h1;Z)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/DrawerPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;-><init>(Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->volatile:Lcom/apk/u5;

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->continue:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->while:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->import:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->native:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->public:Lcom/apk/h1;

    .line 8
    iput-boolean p6, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->return:Z

    return-void
.end method


# virtual methods
.method public break()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->finally:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final catch()V
    .locals 4

    const-string v0, "#888888"

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->return:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->this:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->break:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->this:Landroid/widget/LinearLayout;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->break:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "#A1A1A1"

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->private:I

    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->abstract:I

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->finally:Landroid/widget/LinearLayout;

    const-string v1, "#1D1D1D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->this:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->break:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->this:Landroid/widget/LinearLayout;

    const v1, 0x7f0600d6

    invoke-static {v1}, Lcom/apk/ze;->p(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->break:Landroid/widget/TextView;

    const v2, 0x7f060064

    invoke-static {v2}, Lcom/apk/ze;->p(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->private:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06006d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->abstract:I

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->finally:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final class(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->super:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->super:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->strictfp:Lcom/apk/v3;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->import:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/apk/v3;->static(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final const(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throws:Landroid/widget/Button;

    const v0, 0x7f100192

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throws:Landroid/widget/Button;

    const v1, 0x7f100193

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final final()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apk/k;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    invoke-virtual {v1}, Lcom/apk/k;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    invoke-virtual {v3, v0}, Lcom/apk/k;->if(I)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->native:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0164

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
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->class:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw(Z)V

    goto/16 :goto_3

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw(Z)V

    goto/16 :goto_3

    .line 6
    :sswitch_2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->public:Lcom/apk/h1;

    if-eqz p1, :cond_9

    .line 8
    invoke-interface {p1}, Lcom/apk/h1;->do()V

    goto/16 :goto_3

    .line 9
    :sswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "top"

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "bottom"

    if-eqz v1, :cond_2

    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    const v0, 0x7f08015e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    invoke-virtual {v1}, Lcom/apk/k;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->super()V

    goto/16 :goto_3

    .line 20
    :sswitch_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    if-eqz p1, :cond_9

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :try_start_2
    iget-object v2, p1, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    invoke-virtual {v2}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    check-cast v2, Ljava/util/HashSet;

    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_4
    iget-object p1, p1, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    invoke-virtual {p1}, Lcom/apk/gg;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/BookMark;

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookMark;->getNovelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookMark;->getChapterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookMark;->getReadPage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/apk/n2;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_6
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/ad;

    invoke-direct {v1, p0}, Lcom/apk/ad;-><init>(Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;)V

    invoke-virtual {p1, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 30
    :cond_7
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const(I)V

    goto :goto_3

    .line 31
    :sswitch_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    if-eqz p1, :cond_8

    .line 32
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if(Z)V

    .line 33
    :cond_8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->break()V

    goto :goto_3

    .line 34
    :sswitch_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->native:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 35
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final()V

    :cond_9
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901df -> :sswitch_6
        0x7f0901e9 -> :sswitch_5
        0x7f0901ec -> :sswitch_4
        0x7f0903ec -> :sswitch_3
        0x7f0903ed -> :sswitch_2
        0x7f0903f2 -> :sswitch_1
        0x7f0903f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0903f0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->this:Landroid/widget/LinearLayout;

    const v0, 0x7f0903f4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->break:Landroid/widget/TextView;

    const v0, 0x7f0903ec

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    const v0, 0x7f0903f3

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->class:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903f2

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903f1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const v0, 0x7f09037f

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->super:Landroid/view/View;

    const v0, 0x7f0903ef

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw:Landroid/widget/FrameLayout;

    const v0, 0x7f0903f6

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->switch:Landroid/widget/LinearLayout;

    const v0, 0x7f0901ec

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throws:Landroid/widget/Button;

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e9

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->default:Landroid/widget/Button;

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09048c

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->extends:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09020f

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->finally:Landroid/widget/LinearLayout;

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->class:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    const v2, 0x7f08015e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    const-string v2, "bottom"

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0903ed

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901df

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->extends:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->extends:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->else(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 27
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->extends:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->default:Landroid/widget/Button;

    const v2, 0x7f10018e

    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const(I)V

    .line 30
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch()V

    .line 31
    new-instance v0, Lcom/apk/v3;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->continue:Landroid/app/Activity;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->volatile:Lcom/apk/u5;

    invoke-direct {v0, v2, v3}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->strictfp:Lcom/apk/v3;

    .line 32
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->break:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->while:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v0, Lcom/apk/k;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/apk/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    .line 34
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->class(Z)V

    .line 37
    new-instance v0, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    iget v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->private:I

    iget v2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->abstract:I

    invoke-direct {v0, v1, v2}, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;-><init>(II)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    .line 38
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->extends:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

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
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    .line 2
    iget-object p1, p1, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isGroup()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->public:Lcom/apk/h1;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/apk/h1;->for(Lcom/biquge/ebook/app/bean/ChapterBean;)V

    .line 6
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V

    :cond_1
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/BookMark;

    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    .line 9
    iget-boolean p2, p2, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->do:Z

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->do(Lcom/biquge/ebook/app/bean/BookMark;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p2, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    invoke-virtual {v1, v0}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object p1, p2, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    invoke-virtual {p1, v0}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p2, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    invoke-virtual {v1, v0, p1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :goto_0
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_1
    iget-object p1, p2, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if:Lcom/apk/gg;

    invoke-virtual {p1}, Lcom/apk/gg;->size()I

    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->public:Lcom/apk/h1;

    if-eqz p2, :cond_3

    .line 21
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->public:Lcom/apk/h1;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookMark;->getChapterId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookMark;->getReadPage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/apk/h1;->if(Ljava/lang/String;I)V

    .line 22
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    .line 2
    iget-boolean p1, p1, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->do:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->super()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onShow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onShow()V

    .line 2
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/ad;

    invoke-direct {v1, p0}, Lcom/apk/ad;-><init>(Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public super()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const(I)V

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->finally:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/adapter/BookMarkAdapter;->if(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final throw(Z)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->switch:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->class:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->switch:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    const v0, 0x7f08015e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    const v0, 0x7f08015f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->switch:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->class:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->throw:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->switch:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->catch:Landroid/widget/ImageView;

    const v0, 0x7f0800d9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
