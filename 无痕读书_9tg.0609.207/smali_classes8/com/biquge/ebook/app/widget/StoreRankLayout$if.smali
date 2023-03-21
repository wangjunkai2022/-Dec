.class public Lcom/biquge/ebook/app/widget/StoreRankLayout$if;
.super Lcom/apk/bg;
.source "StoreRankLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/StoreRankLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final do:I

.field public final synthetic if:Lcom/biquge/ebook/app/widget/StoreRankLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/StoreRankLayout;ILcom/apk/ah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    .line 2
    iput p2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->do:I

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    .line 7
    array-length p1, p1

    iget v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->do:I

    if-le p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->case:[Ljava/lang/String;

    .line 10
    iget v1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->do:I

    aget-object v0, v0, v1

    .line 11
    iput-object v0, p1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->else:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->new:Lcom/biquge/ebook/app/widget/StoreRankLayout$for;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 15
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/StoreRankLayout;->try:Ljava/util/Map;

    .line 16
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 17
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->else:Ljava/lang/String;

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->if:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    iget v0, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout$if;->do:I

    .line 20
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/widget/StoreRankLayout;->if(I)V

    return-void
.end method
