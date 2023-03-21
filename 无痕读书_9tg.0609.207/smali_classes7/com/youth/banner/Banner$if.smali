.class public Lcom/youth/banner/Banner$if;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lcom/youth/banner/Banner;


# direct methods
.method public constructor <init>(Lcom/youth/banner/Banner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner$if;->do:Lcom/youth/banner/Banner;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner$if;->do:Lcom/youth/banner/Banner;

    .line 2
    iget-object v0, v0, Lcom/youth/banner/Banner;->finally:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner$if;->do:Lcom/youth/banner/Banner;

    .line 2
    iget-object v0, v0, Lcom/youth/banner/Banner;->finally:Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/youth/banner/Banner$if;->do:Lcom/youth/banner/Banner;

    .line 5
    iget-object p1, p1, Lcom/youth/banner/Banner;->finally:Ljava/util/List;

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/youth/banner/Banner$if;->do:Lcom/youth/banner/Banner;

    .line 8
    iget-object v0, v0, Lcom/youth/banner/Banner;->c:Lcom/apk/cc0;

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/youth/banner/Banner$if$do;

    invoke-direct {v0, p0, p2}, Lcom/youth/banner/Banner$if$do;-><init>(Lcom/youth/banner/Banner$if;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
