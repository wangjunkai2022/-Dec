.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch$do;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch$do;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch$do;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch$do;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch;->if:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$catch$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
