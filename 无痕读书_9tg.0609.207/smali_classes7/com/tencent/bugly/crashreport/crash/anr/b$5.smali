.class public final Lcom/tencent/bugly/crashreport/crash/anr/b$5;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/anr/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public synthetic a:Lcom/tencent/bugly/crashreport/crash/anr/b;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/anr/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$5;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$5;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->b(Lcom/tencent/bugly/crashreport/crash/anr/b;)V

    return-void
.end method
