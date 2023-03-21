.class public Lcom/apk/nz;
.super Lcom/apk/b40$if;
.source "IndicatorAdapter.java"


# instance fields
.field public case:I

.field public else:I

.field public for:I

.field public if:Landroid/content/Context;

.field public new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public try:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/apk/b40$if;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/apk/nz;->if:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/apk/nz;->new:Ljava/util/List;

    .line 10
    iput p3, p0, Lcom/apk/nz;->for:I

    const/high16 p1, 0x41900000    # 18.0f

    .line 11
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/apk/nz;->case:I

    const/high16 p1, 0x41800000    # 16.0f

    .line 12
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/apk/nz;->else:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/b40$if;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/nz;->if:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/apk/nz;->try:[Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/apk/nz;->for:I

    const/high16 p1, 0x41900000    # 18.0f

    .line 5
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/apk/nz;->case:I

    const/high16 p1, 0x41800000    # 16.0f

    .line 6
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/apk/nz;->else:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/nz;->new:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/nz;->try:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public if(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/apk/nz;->if:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c01c8

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/apk/nz;->try:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4
    array-length v2, v1

    if-lez v2, :cond_2

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lcom/apk/nz;->for:I

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/apk/nz;->case:I

    iget-object v1, p0, Lcom/apk/nz;->try:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v1, v1, v0

    iget v0, p0, Lcom/apk/nz;->else:I

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/apk/nz;->for:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/apk/nz;->try:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 10
    aget-object p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/apk/nz;->new:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 13
    iget v0, p0, Lcom/apk/nz;->for:I

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_1

    .line 15
    :cond_4
    iget v0, p0, Lcom/apk/nz;->case:I

    iget-object v1, p0, Lcom/apk/nz;->new:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v1, v1, v0

    iget v0, p0, Lcom/apk/nz;->else:I

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_1

    .line 16
    :cond_5
    iget v0, p0, Lcom/apk/nz;->for:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/apk/nz;->new:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-object p2
.end method
