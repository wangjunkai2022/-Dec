.class public Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding$if;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ClipImageActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding$if;->do:Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity_ViewBinding$if;->do:Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/activity/ClipImageActivity;->menuClick(Landroid/view/View;)V

    return-void
.end method
