.class public Lcom/manhua/ui/widget/ComicReadMenuView$if;
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
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$if;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$if;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object v1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    .line 3
    invoke-static {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->else(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/manhua/ui/widget/ComicReadMenuView$if;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-static {v2}, Lcom/manhua/ui/widget/ComicReadMenuView;->if(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
