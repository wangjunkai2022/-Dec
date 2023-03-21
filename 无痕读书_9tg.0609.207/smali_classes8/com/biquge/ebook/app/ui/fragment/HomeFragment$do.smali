.class public Lcom/biquge/ebook/app/ui/fragment/HomeFragment$do;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/TitleIndicatorView$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/hf;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mShelfMoreIView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
