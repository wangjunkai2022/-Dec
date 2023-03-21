.class public Lcom/manhua/ui/activity/ComicNovelDirActivity_ViewBinding$if;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ComicNovelDirActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicNovelDirActivity_ViewBinding;-><init>(Lcom/manhua/ui/activity/ComicNovelDirActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicNovelDirActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicNovelDirActivity_ViewBinding;Lcom/manhua/ui/activity/ComicNovelDirActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity_ViewBinding$if;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity_ViewBinding$if;->do:Lcom/manhua/ui/activity/ComicNovelDirActivity;

    invoke-virtual {v0, p1}, Lcom/manhua/ui/activity/ComicNovelDirActivity;->menuClick(Landroid/view/View;)V

    return-void
.end method
