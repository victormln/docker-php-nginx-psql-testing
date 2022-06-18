<?php declare(strict_types=1);

namespace Victormln\Docker\Tests;

use PHPUnit\Framework\TestCase;
use Victormln\Docker\Id;

class IdTest extends TestCase
{
    private const EXPECTED_ID = '8b82112f-67ed-46bf-9c60-0c8cf169aabb';

    public function test_Id_is_created(): void
    {
        $id = new Id(self::EXPECTED_ID);

        self::assertSame(self::EXPECTED_ID, $id->value());
    }
}