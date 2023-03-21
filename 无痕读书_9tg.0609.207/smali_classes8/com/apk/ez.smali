.class public Lcom/apk/ez;
.super Lcom/apk/bi;
.source "ComicChapterDirAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ez$do;,
        Lcom/apk/ez$if;
    }
.end annotation


# instance fields
.field public final case:I

.field public do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicChapterBean;",
            ">;"
        }
    .end annotation
.end field

.field public for:Ljava/lang/String;

.field public final if:Landroid/view/LayoutInflater;

.field public final new:I

.field public final try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/bi;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/apk/ez;->if:Landroid/view/LayoutInflater;

    .line 3
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    iget-boolean p2, p2, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    const v0, 0x7f06003c

    if-eqz p2, :cond_0

    .line 5
    invoke-static {v0}, Lcom/apk/ze;->p(I)I

    move-result p2

    iput p2, p0, Lcom/apk/ez;->new:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 7
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    .line 8
    invoke-static {p2, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/apk/ez;->new:I

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060068

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/apk/ez;->case:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060073

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/apk/ez;->try:I

    return-void
.end method


# virtual methods
.method public do(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/ez;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ez;->do:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ez;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ez;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/ez;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/apk/ez;->if:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00e3

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/apk/ez$if;

    invoke-direct {p3, p2}, Lcom/apk/ez$if;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apk/ez$if;

    .line 6
    :goto_0
    iget-object p3, p3, Lcom/apk/ez$if;->do:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/apk/ez;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    .line 8
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/apk/ez;->getItemViewType(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    if-nez p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/apk/ez;->if:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0080

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 11
    new-instance p3, Lcom/apk/ez$do;

    invoke-direct {p3, p2}, Lcom/apk/ez$do;-><init>(Landroid/view/View;)V

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apk/ez$do;

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/apk/ez;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    .line 15
    iget-object v0, p3, Lcom/apk/ez$do;->do:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/apk/ez;->for:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p3, Lcom/apk/ez$do;->do:Landroid/widget/TextView;

    .line 19
    iget v2, p0, Lcom/apk/ez;->new:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p3, Lcom/apk/ez$do;->do:Landroid/widget/TextView;

    .line 22
    iget v2, p0, Lcom/apk/ez;->case:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 23
    :cond_4
    iget-object v0, p3, Lcom/apk/ez$do;->do:Landroid/widget/TextView;

    .line 24
    iget v2, p0, Lcom/apk/ez;->try:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    :goto_2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isCache()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 26
    iget-object p1, p3, Lcom/apk/ez$do;->if:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 28
    :cond_5
    iget-object p1, p3, Lcom/apk/ez$do;->if:Landroid/widget/TextView;

    const/16 p3, 0x8

    .line 29
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public if(I)Lcom/manhua/data/bean/ComicChapterBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ez;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    return-object p1
.end method
