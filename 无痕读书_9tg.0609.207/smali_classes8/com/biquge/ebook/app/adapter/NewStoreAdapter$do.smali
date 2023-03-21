.class public Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;
.super Lcom/apk/bg;
.source "NewStoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/adapter/NewStoreAdapter;->new(Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/bean/Book;

.field public final synthetic for:Lcom/biquge/ebook/app/adapter/NewStoreAdapter;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/adapter/NewStoreAdapter;Lcom/biquge/ebook/app/bean/Book;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;->for:Lcom/biquge/ebook/app/adapter/NewStoreAdapter;

    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;->do:Lcom/biquge/ebook/app/bean/Book;

    iput p3, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;->if:I

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;->do:Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;->for:Lcom/biquge/ebook/app/adapter/NewStoreAdapter;

    .line 3
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const-string v0, "\u7cbe\u9009|"

    .line 4
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;->if:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/NewStoreAdapter$do;->do:Lcom/biquge/ebook/app/bean/Book;

    invoke-static {p1, v0, v1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    :cond_0
    return-void
.end method
