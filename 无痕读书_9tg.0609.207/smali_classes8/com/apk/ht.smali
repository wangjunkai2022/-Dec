.class public Lcom/apk/ht;
.super Landroid/widget/BaseAdapter;
.source "PopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ht$if;
    }
.end annotation


# instance fields
.field public do:Z

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apk/ot;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/ht;->if:Ljava/util/List;

    .line 3
    iput-boolean p3, p0, Lcom/apk/ht;->do:Z

    return-void
.end method


# virtual methods
.method public do(I)Lcom/apk/ot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ht;->if:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/ht;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/ot;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ht;->if:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/ht;->do(I)Lcom/apk/ot;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/codelibrary/R$layout;->pop_popwindow_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/apk/ht$if;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/apk/ht$if;-><init>(Lcom/apk/ht;Lcom/apk/ht$do;)V

    .line 3
    sget v1, Lcom/codelibrary/R$id;->pop_item_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/apk/ht$if;->do:Landroid/widget/ImageView;

    .line 4
    sget v1, Lcom/codelibrary/R$id;->pop_item_right_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/apk/ht$if;->if:Landroid/widget/ImageView;

    .line 5
    sget v1, Lcom/codelibrary/R$id;->pop_item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/apk/ht$if;->for:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apk/ht$if;

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/apk/ht;->do(I)Lcom/apk/ot;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    iget-object v1, p3, Lcom/apk/ht$if;->for:Landroid/widget/TextView;

    .line 10
    iget-object v2, p1, Lcom/apk/ot;->if:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget v1, p1, Lcom/apk/ot;->for:I

    if-eqz v1, :cond_1

    .line 13
    iget-object v2, p3, Lcom/apk/ht$if;->for:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    :cond_1
    iget v1, p1, Lcom/apk/ot;->do:I

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 15
    iget-object v3, p3, Lcom/apk/ht$if;->do:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v1, p3, Lcom/apk/ht$if;->do:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v1, p3, Lcom/apk/ht$if;->do:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :goto_1
    iget-boolean v1, p0, Lcom/apk/ht;->do:Z

    if-eqz v1, :cond_4

    .line 19
    iget-boolean p1, p1, Lcom/apk/ot;->new:Z

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p3, Lcom/apk/ht$if;->if:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p3, Lcom/apk/ht$if;->if:Landroid/widget/ImageView;

    sget p3, Lcom/codelibrary/R$drawable;->popup_item_choice:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 22
    :cond_3
    iget-object p1, p3, Lcom/apk/ht$if;->if:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p3, Lcom/apk/ht$if;->if:Landroid/widget/ImageView;

    sget p3, Lcom/codelibrary/R$drawable;->popup_item_choice:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 24
    :cond_4
    iget-object p1, p3, Lcom/apk/ht$if;->if:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-object p2
.end method
