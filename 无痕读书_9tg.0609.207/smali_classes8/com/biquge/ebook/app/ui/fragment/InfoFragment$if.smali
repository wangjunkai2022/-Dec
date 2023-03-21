.class public Lcom/biquge/ebook/app/ui/fragment/InfoFragment$if;
.super Lcom/apk/r5;
.source "InfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/InfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public super(Lcom/biquge/ebook/app/bean/WantBookBean;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->case:I

    .line 3
    iput v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->else:I

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/WantBookBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getIsPass()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getThreshold()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    .line 8
    iget v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->case:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->case:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    .line 10
    iget v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->else:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->else:I

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/InfoFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->a(Lcom/biquge/ebook/app/ui/fragment/InfoFragment;)V

    return-void
.end method
