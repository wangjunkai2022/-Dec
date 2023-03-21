.class public Lcom/apk/cc;
.super Ljava/lang/Object;
.source "NewStoreFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/cc;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/cc;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->class:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->const:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{page}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->while:Lcom/apk/v3;

    if-eqz v0, :cond_0

    .line 4
    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/i4;

    invoke-direct {v3, v0}, Lcom/apk/i4;-><init>(Lcom/apk/v3;)V

    const-wide/32 v4, 0x2bf20

    invoke-static {v1, v4, v5, v2, v3}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    :cond_0
    return-void
.end method
