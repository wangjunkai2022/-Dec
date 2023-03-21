.class public final synthetic Lcom/apk/s00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadActivity;

.field public final synthetic if:Z


# direct methods
.method public synthetic constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/s00;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    iput-boolean p2, p0, Lcom/apk/s00;->if:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/s00;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    iget-boolean v1, p0, Lcom/apk/s00;->if:Z

    invoke-virtual {v0, v1}, Lcom/manhua/ui/activity/ComicReadActivity;->F(Z)V

    return-void
.end method
