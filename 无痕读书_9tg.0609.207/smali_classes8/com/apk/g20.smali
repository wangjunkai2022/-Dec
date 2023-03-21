.class public final synthetic Lcom/apk/g20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public synthetic constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/g20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/g20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->public()V

    return-void
.end method
