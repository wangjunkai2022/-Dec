.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$do;
.super Ljava/lang/Object;
.source "BookStoreCategoryFragment.java"

# interfaces
.implements Lcom/manhua/ui/widget/PublicLoadingView$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->case:Lcom/apk/v3;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/v3;->return()V

    :cond_0
    return-void
.end method
