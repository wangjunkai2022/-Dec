.class public Lcom/apk/k;
.super Lcom/apk/bi;
.source "ChapterDirAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/k$do;,
        Lcom/apk/k$if;
    }
.end annotation


# instance fields
.field public final case:I

.field public do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;"
        }
    .end annotation
.end field

.field public else:I

.field public for:Ljava/lang/String;

.field public goto:I

.field public final if:Landroid/view/LayoutInflater;

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/apk/bi;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/k;->if:Landroid/view/LayoutInflater;

    .line 3
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    iget-boolean v0, v0, Lcom/biquge/ebook/app/app/AppContext;->if:Z

    const v1, 0x7f06003c

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->p(I)I

    move-result v0

    iput v0, p0, Lcom/apk/k;->case:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v1

    .line 8
    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/apk/k;->case:I

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060064

    .line 10
    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v1

    .line 11
    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/apk/k;->else:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060073

    .line 13
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    .line 14
    invoke-static {p1, v0}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->goto:I

    return-void
.end method


# virtual methods
.method public do(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/k;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public for(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/k;->do:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/k;->do:Ljava/util/List;

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
    iget-object v0, p0, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

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
    iget-object v0, p0, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isGroup()Z

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
    invoke-virtual {p0, p1}, Lcom/apk/k;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/apk/k;->if:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00e3

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/apk/k$if;

    invoke-direct {p3, p2}, Lcom/apk/k$if;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apk/k$if;

    .line 6
    :goto_0
    iget v0, p0, Lcom/apk/k;->try:I

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p3, Lcom/apk/k$if;->do:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 9
    :cond_1
    iget v0, p0, Lcom/apk/k;->new:I

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p3, Lcom/apk/k$if;->do:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_2
    iget-object p3, p3, Lcom/apk/k$if;->do:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 14
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 15
    :cond_3
    invoke-virtual {p0, p1}, Lcom/apk/k;->getItemViewType(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    if-nez p2, :cond_4

    .line 16
    iget-object p2, p0, Lcom/apk/k;->if:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0119

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 17
    new-instance p3, Lcom/apk/k$do;

    invoke-direct {p3, p2}, Lcom/apk/k$do;-><init>(Landroid/view/View;)V

    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apk/k$do;

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 21
    iget-object v0, p3, Lcom/apk/k$do;->do:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/apk/k;->for:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, p3, Lcom/apk/k$do;->do:Landroid/widget/TextView;

    .line 25
    iget v2, p0, Lcom/apk/k;->case:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-object v0, p3, Lcom/apk/k$do;->do:Landroid/widget/TextView;

    .line 28
    iget v2, p0, Lcom/apk/k;->else:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 29
    :cond_6
    iget-object v0, p3, Lcom/apk/k$do;->do:Landroid/widget/TextView;

    .line 30
    iget v2, p0, Lcom/apk/k;->goto:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    :goto_2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isCache()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    iget-object p1, p3, Lcom/apk/k$do;->if:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 34
    :cond_7
    iget-object p1, p3, Lcom/apk/k$do;->if:Landroid/widget/TextView;

    const/16 p3, 0x8

    .line 35
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    const/4 p2, 0x0

    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public if(I)Lcom/biquge/ebook/app/bean/ChapterBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/k;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ChapterBean;

    return-object p1
.end method

.method public new(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/k;->for:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/apk/k;->for:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p1, "#FFFFFF"

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->new:I

    const-string p1, "#1C1C1C"

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->try:I

    const-string p1, "#999999"

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->else:I

    const-string p1, "#99999999"

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->goto:I

    goto :goto_0

    :cond_0
    const-string p1, "#333333"

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->new:I

    const-string p1, "#CEC8C0"

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->try:I

    const p1, 0x7f060064

    .line 9
    invoke-static {p1}, Lcom/apk/ze;->p(I)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->else:I

    const p1, 0x7f060073

    .line 10
    invoke-static {p1}, Lcom/apk/ze;->p(I)I

    move-result p1

    iput p1, p0, Lcom/apk/k;->goto:I

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
