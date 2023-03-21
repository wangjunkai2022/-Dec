.class public Lcom/manhua/ui/fragment/ComicNewStoreFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ComicNewStoreFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicNewStoreFragment_ViewBinding;-><init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment_ViewBinding;Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment_ViewBinding$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment_ViewBinding$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {p1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->menuClick()V

    return-void
.end method
