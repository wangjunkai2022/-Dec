.class public final synthetic Lcom/apk/j10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/j10;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/j10;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-virtual {v0}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->j()V

    return-void
.end method
