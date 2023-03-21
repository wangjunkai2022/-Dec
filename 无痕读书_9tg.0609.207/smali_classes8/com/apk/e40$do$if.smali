.class public Lcom/apk/e40$do$if;
.super Lcom/apk/b40$if;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/e40$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic if:Lcom/apk/e40$do;


# direct methods
.method public constructor <init>(Lcom/apk/e40$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e40$do$if;->if:Lcom/apk/e40$do;

    invoke-direct {p0}, Lcom/apk/b40$if;-><init>()V

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e40$do$if;->if:Lcom/apk/e40$do;

    invoke-virtual {v0}, Lcom/apk/e40$do;->do()I

    move-result v0

    return v0
.end method

.method public if(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/e40$do$if;->if:Lcom/apk/e40$do;

    check-cast v0, Lcom/apk/y30;

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c01c8

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 5
    iget-object v1, v0, Lcom/apk/y30;->new:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, Lcom/apk/y30;->try:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8
    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
