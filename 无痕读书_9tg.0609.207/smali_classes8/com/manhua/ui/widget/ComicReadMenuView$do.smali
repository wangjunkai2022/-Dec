.class public Lcom/manhua/ui/widget/ComicReadMenuView$do;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/ComicReadMenuView;->menuClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$do;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$do;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-static {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->goto(Lcom/manhua/ui/widget/ComicReadMenuView;)V

    return-void
.end method
