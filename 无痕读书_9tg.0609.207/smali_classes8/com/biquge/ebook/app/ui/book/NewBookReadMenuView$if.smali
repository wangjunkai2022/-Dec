.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$if;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Lcom/apk/uv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->menuClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$if;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$if;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$if;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$if;->do:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/eg;->abstract(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
