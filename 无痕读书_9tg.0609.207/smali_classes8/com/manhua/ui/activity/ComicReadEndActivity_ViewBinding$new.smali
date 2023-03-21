.class public Lcom/manhua/ui/activity/ComicReadEndActivity_ViewBinding$new;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ComicReadEndActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicReadEndActivity_ViewBinding;-><init>(Lcom/manhua/ui/activity/ComicReadEndActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadEndActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadEndActivity_ViewBinding;Lcom/manhua/ui/activity/ComicReadEndActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/manhua/ui/activity/ComicReadEndActivity_ViewBinding$new;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadEndActivity_ViewBinding$new;->do:Lcom/manhua/ui/activity/ComicReadEndActivity;

    invoke-virtual {v0, p1}, Lcom/manhua/ui/activity/ComicReadEndActivity;->menuClick(Landroid/view/View;)V

    return-void
.end method
