.class public Lcom/apk/me0$if;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/me0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/me0;


# direct methods
.method public constructor <init>(Lcom/apk/me0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/me0$if;->do:Lcom/apk/me0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/me0$if;->do:Lcom/apk/me0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apk/me0;->while(I)V

    return-void
.end method
